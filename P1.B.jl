#Problem 1: Part B
include("PhasePortraitV2.jl")
function ODE_Final(D1,D2)
  v = 0.00000000001
  deltaD1 = @. (1/(1+10*(D2^2/(0.1+D2^2))^2))-D1
  deltaD2 = @. (1/(1+10*(D1^2/(0.1+D1^2))^2))-D2
  
  return(deltaD1,deltaD2)
end

tspan = (0.0,50.0)

xlim = (0, 1, 20)
ylim = (0, 1, 20)

#Show that in the long-time limit, the system will settle into a steady state
x0=([0.3,0.32],[0.3,0.32])

phaseplot(ODE_Final,xlim,ylim,xinit=x0,clines=true,t=tspan,norm=true,scale=0.5)
