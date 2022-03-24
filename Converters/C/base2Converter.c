int toBase2(int val) {
   int ar[]={};
   while(val!=0)
   {
      if (val%2==0) 
      {
        ar[sizeof(ar)]=0;
        val=val/2;
      } 
      else {
        ar[sizeof(ar)]=1;
        val=(val-1)/2;
      }
   }
   return ar;
}
