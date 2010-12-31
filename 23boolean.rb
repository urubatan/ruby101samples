#encoding: UTF-8
def testa_valor(val)
  if val
    print "#{val} é considerado verdadeiro pelo Ruby\n"
  else
    print "#{val} é considerado falso pelo Ruby\n"
  end
end

testa_valor true

testa_valor false

testa_valor 1

testa_valor "asda"

testa_valor nil
 