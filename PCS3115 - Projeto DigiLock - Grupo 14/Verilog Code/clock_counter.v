//relógio para registrar o horário dos eventos.
module clock_counter (clk_1Hz, horario);
    input clk_1Hz;
	 output reg [16:0] horario; 

    reg [5:0] seconds, minutes;
    reg [4:0] hours; 
	 
	 initial begin
		seconds = 0;
		minutes = 0;
		hours = 0;
	 end
		
    always @ (posedge(clk_1Hz)) begin  
            seconds = seconds + 1; 
            if(seconds == 60) begin 
                seconds = 0;  
                minutes = minutes + 1; 
                if(minutes == 60) begin 
                    minutes = 0;  
                    hours = hours + 1;  
                    if(hours ==  24) begin  
                        hours = 0; 
                    end 
                end
            end   
		  horario = {hours, minutes, seconds}; 
    end     
endmodule