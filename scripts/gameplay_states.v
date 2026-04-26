`timescale 1 ns / 100 ps

module gameplay_states (Start, Ack, Clk, Reset, Qi, Qp, Qw, Ql, BtnD, marioHitGoombaFlag, respawn);

input BtnD;
input marioHitGoombaFlag;
input coinCollected;
input qblockHit,
input Start, Ack, Clk, Reset;
output Qi, Qp, Qw, Ql;
output reg respawn;

// Rest are wire by default
reg [2:0] coins; // ~5 coins total in the level
reg [1:0] lives;
reg [2:0] state;
reg doneFlag;

localparam INI	= 3'b001;
localparam PLAY = 3'b010;
localparam WIN = 3'b101;
localparam LOSE = 3'b100; 

assign {Qw, Ql, Qp, Qi} = state;
reg hitLastFrame;
reg coinLastFrame;
reg [1:0] respawn_pulse;

always @(posedge Clk or posedge Reset) begin
    if (Reset)
        hitLastFrame <= 1'b0;
    else
        hitLastFrame <= marioHitGoombaFlag;
end
always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
          state <= INI;
          lives <= 2'b11;
          coins <= 3'b000;
		  doneFlag <= 1'b0;
		  respawn_pulse <= 0; 
		  respawn <= 1'b0;
	    end

    else
       begin
         (* full_case, parallel_case *)
         
         case (state)
	        INI	: 
	          begin
		        // state transitions in the control unit
		        if (BtnD)
		           state <= PLAY;
                else
                    state <= INI;
		        // RTL operations in the DPU (Data Path Unit) 
                lives <= 2'b11;
                coins <= 3'b000;
                doneFlag <= 1'b0; 
	          end

	        PLAY: 
	          begin
		        // state transitions in the control unit
                if(doneFlag == 1'b1)
                    state <= WIN;
                else if(lives == 2'b00)
                    state <= LOSE;

		        // RTL operations in the Data Path 	
                if(marioHitGoombaFlag && !hitLastFrame && respawn==0)begin
                    lives <= lives - 1;
                    respawn_pulse <= 2'd2;
                    respawn <= 1'b1;  // start immediately
                end else if (respawn_pulse > 0) begin
                    respawn_pulse <= respawn_pulse - 1;
                    respawn <= 1'b1;
                end else
                    respawn <= 1'b0;

 	          end
            // coin collection — only on rising edge
                if (coin_collected && !coinLastFrame)
                  coins <= coins + 3'b001;

            // increase score if question block is hit (once per block)
            if (qblockHit)
                coins <= coins + 3'b001;
            
            // TODO: IMPLEMENT THE STATE LOGIC / TRANSITIONS FOR THE STATES (i think this is it but check)
	        WIN	:
	          begin  
		         // state transitions in the control unit
		         if (Ack)
		           state <= INI;
		       end    

            LOSE	:
	          begin  
		         // state transitions in the control unit
		         if (Ack)
		           state <= INI;
		       end    

      endcase
    end 
  end
 
endmodule  
