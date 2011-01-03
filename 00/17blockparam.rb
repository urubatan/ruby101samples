#encoding : UTF-8
def recebe_proc_e_passa_parametro
  if block_given?
    yield(23)
  else
    puts "você precisa passar um bloco para este método\n"
  end
end

recebe_proc_e_passa_parametro do |par|
  puts "Recebi #{par} dentro deste bloco\n"
end