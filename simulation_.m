robotCmd = rospublisher("/cmd_vel") ;
velMsg = rosmessage(robotCmd);

for i = 1:length(Xd)
    vx = Xd(i)/10;     % meters per second
    vy = Yd(i)/10;
    velMsg.Linear.X = vx;
    velMsg.Linear.Y = vy;
    send(robotCmd,velMsg)
    pause(0.505)
end
velMsg.Linear.X = 0;
velMsg.Linear.Y = 0;
send(robotCmd,velMsg)