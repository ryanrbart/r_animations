# Animation test

library(rhessysR)
library("animation")


#happy = readin_rhessys_output("data/patch_sim")



saveHTML({
  xlim <- c(0,500)
  ylim <- c(0.05,400)
  
  oopt <- ani.options(interval = 0.03, nmax = xlim[2])
  for (i in 1:ani.options("nmax")) {
    plot(happy$bd$streamflow[1:i], xlim=xlim, ylim = ylim, log="y", type="l")
    ani.pause()
  }
  ani.options(oopt)
}, img.name = "animation_output/Rplot", global.opts = "", single.opts = "")







# ----

oopt <- ani.options(nmax = 50, interval = 0.1)
x <- cumsum(rnorm(n = ani.options("nmax")))
ani.record(reset = TRUE)
par(bg = "white", mar = c(4, 4, 0.1, 0.1))
plot(x, type = "n")
for(i in 1:length(x)) {
  points(i, x[i])
  ani.record()
}
ani.replay()
ani.options(oopt)




