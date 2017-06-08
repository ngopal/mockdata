library(rjson)

set1 = "lat[100], long[100], names[100], normaldist[100 10 2]"

pjson = '
  [
    {
      "funcname" : "lat",
      "params" : [100]
    },
    {
      "funcname" : "long",
      "params" : [100]
    },
    {
      "funcname" : "names",
      "params" : [100]
    },
    {
      "funcname" : "normdist",
      "params" : [100, 10, 2]
    }
  ]
'

jtree = fromJSON(pjson)

for (j in 1:length(jtree)) {
  funcname <- jtree[[j]]$funcname
  params <- jtree[[j]]$params
  if (funcname == "normdist") {
    print(do.call(rnorm, as.list(params)))
  }
}


