def fermatfactor(N):
  if N <= 0: return [N]
  if is_even(N): return [2,N/2]
  a = ceil(sqrt(N))
  while not is_square(a^2-N):
    a = a + 1
  b = sqrt(a^2-N)
  return [a - b,a + b]

# Very CloseQP
#n = 112421669060399956986367421471522274763620630713869928275575801768805742928429125845443925273931224902361917953532406156094313050840872610487333863447808074966477755274534568334940704111115937296330388429409569440785006316555673801318745308608773691570316883074174605863734103561500162053873040254255024422007

# Not so ClosePQ
n = 490963276439300163974358078751564966935647623573945092674153919631095106803113960790445734183657340544356961673814947178422179864580766235512590323915826448266616741533232891220025698071647988317789125525821000237672311769577294966790885260094640627513288213434253048131773244591800441567386069459534350419701 

print("n = {}".format(n))

p, q = fermatfactor(n)

print("p = {}".format(p))
print("q = {}".format(q))
print("p * q = {}".format(p * q))
