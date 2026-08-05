module always_if_2 (cpu_overheated,shut_off_computer,arrived,gas_tank_empty,keep_driving);
    input cpu_overheated,arrived,gas_tank_empty;
    output reg shut_off_computer,keep_driving;
    always @(*) begin
        shut_off_computer = 0;
        keep_driving = 1;
        if (cpu_overheated) shut_off_computer = 1;
        if (gas_tank_empty || arrived) keep_driving = 0;     
    end
endmodule