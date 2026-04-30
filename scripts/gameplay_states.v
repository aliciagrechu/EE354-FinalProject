`timescale 1 ns / 100 ps

module gameplay_states (
    Start, Ack, Clk, Reset, 
    Qi, Qp, Qw, Ql, BtnD, 
    marioHitGoombaFlag, 
    respawn, 
    marioTouchFlag,
    marioSlideDone,
    coinCollected,
    qblockHit, flag_slide
  );

input BtnD;
input marioHitGoombaFlag;
input coinCollected;
input qblockHit;
input Start, Ack, Clk, Reset;
input marioTouchFlag;
input marioSlideDone;
input fellInPit;

output reg flag_slide;
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
reg pitLastFrame;
reg coinLastFrame;
reg [1:0] respawn_pulse;

always @(posedge Clk or posedge Reset) begin
    if (Reset)
        hitLastFrame <= 1'b0;
    else
        hitLastFrame <= marioHitGoombaFlag;
end
always @(posedge Clk or posedge Reset) begin
    if (Reset) pitLastFrame <= 1'b0;
    else       pitLastFrame <= fellInPit;
end
always @(posedge Clk or posedge Reset) begin
    if (Reset)
        coinLastFrame <= 1'b0;
    else
        coinLastFrame <= coinCollected;
end
always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
          state <= INI;
          lives <= 2'b11;
          coins <= 3'b000;
      flag_slide <= 1'b0;
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
                flag_slide <= 1'b0;
	          end

	        PLAY: 
	          begin
		        // state transitions in the control unit
                if (doneFlag == 1'b1)
                    state <= WIN;
                else if (lives == 2'b00)
                    state <= LOSE;
                else
                    state <= PLAY;

		        // RTL operations in the Data Path 	
                if (marioTouchFlag)
                    flag_slide <= 1'b1;

                if (flag_slide && marioSlideDone)
                    doneFlag <= 1'b1;

                if(marioHitGoombaFlag && !hitLastFrame && respawn == 0)begin
                    lives <= lives - 1;
                    respawn_pulse <= 2'd2;
                    respawn <= 1'b1;  // start immediately
                end 
                else if (fellInPit && !pitLastFrame && respawn == 0) begin
                    lives <= lives - 1;
                    respawn_pulse <= 2'd2;
                    respawn <= 1'b1;
                end
                else if (respawn_pulse > 0) begin
                    respawn_pulse <= respawn_pulse - 1;
                    respawn <= 1'b1;
                end 
                else
                    respawn <= 1'b0;

            // coin collection — only on rising edge
                if (coinCollected && !coinLastFrame)
                  coins <= coins + 3'b001;

            // increase score if question block is hit (once per block)
                if (qblockHit)
                    coins <= coins + 3'b001;
 	          end
            
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
