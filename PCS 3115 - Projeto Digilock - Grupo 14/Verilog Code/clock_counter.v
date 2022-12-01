//relógio para registrar o horário dos eventos.
module clock_counter (clk_1Hz, reset, horario);
    input clk_1Hz, reset;
	 output reg [16:0] horario; 

    reg [5:0] seconds, minutes;
    reg [4:0] hours; 

    always @ (posedge(clk_1Hz) or posedge(reset)) begin
        if(reset == 1'b1) begin  
            seconds = 0;
            minutes = 0;
            hours = 0;  
        end
        else if(clk_1Hz == 1'b1) begin  
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
        end
		  horario = {hours, minutes, seconds}; 
    end     
endmodule