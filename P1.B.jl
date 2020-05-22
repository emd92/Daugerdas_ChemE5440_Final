#Problem 1: Part B
include("PhasePortraitV2.jl")
function ODE_Final(D1,D2)

  deltaD1 = @. (1/(1+10*(D2^2/(0.1+D2^2))^2))-D1
  deltaD2 = @. (1/(1+10*(D1^2/(0.1+D1^2))^2))-D2
  
  return(deltaD1,deltaD2)
end

tspan = (0.0,50.0)

xlim = (0, 1, 30)
ylim = (0, 1, 30)

phaseplot(ODE_Final,xlim,ylim,clines=true,t=tspan,norm=true,scale=0.5)
