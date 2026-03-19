long long XARRAY[1024];

long long sumit(long long length) {
  long long i;
  long long sum;

  for(int i = 0; i < length; i++) {
    sum += XARRAY[i];
  }

  return sum;
}
