import
  unittest2,
  stint,
  ../eth/bloom

suite "Simple Bloom Filter tests":
  test "incl proc":
    var f: BloomFilter
    f.incl("hello")
    check "hello" in f
    check "hello1" notin f
    f.incl("hello1")
    check "hello" in f
    check "hello1" in f

  test "int value":
    var f: BloomFilter
    f.incl("value 1")
    f.incl("value 2")
    check f.value == parse("1090215279796298345343057319992441901006450066263950115824040002588950485497113027143927523755823134941133023716890165043342811041924870874305880232180990464248298835944719578227183672673286106858273952584661686762419935928160959430409028732374024192153399763277382459194254234587232383494962731940352290891816707697788111127980409605093135659121120897102645250001200507634146244124778321795865777525978540960830042468420173693965828992647991129039043403835835590424035347457188427354145120006479590726476620907513681178254852999008485376", StUint[2048])
