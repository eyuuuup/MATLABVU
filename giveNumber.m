function[] = giveNumber()
    import mbed.*
    mymbed = SerialRPC('COM5', 9600)
    mymbed.reset()
       
    ME = [];
    try
        set_LED_mbed = RPCFunction(mymbed, 'set_LED_mbed');
        set_LED_mbed.run('1120');
        
    catch ME
        disp('Error:');
        disp(ME.message);
    end
    
    mymbed.delete;
    clear;
end