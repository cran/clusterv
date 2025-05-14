"random.component.selection" <-
function(d=2, d.original=10)     {
  selected.features <- numeric(d);
  n.feat <- d.original+1;
  feat <- floor(stats::runif(1,1,n.feat));
  selected.features[1] <- feat;
  for (i in 2:d) {
    present <- TRUE;
    while(present)  {
      feat <- floor(stats::runif(1,1,n.feat));
      for (j in 1:(i-1)) {
        if (selected.features[j] == feat)
          break;
      }
      if ((j==i-1) && (selected.features[j] != feat)) {
        present<-FALSE;
        selected.features[i] <- feat;    
      }    
    }
  } 
  selected.features
}
