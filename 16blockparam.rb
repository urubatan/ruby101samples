def recebe_proc_e_passa_parametro
	if block_given?
		yield
	else
		puts "você precisa passar um bloco para este método\n"
	end
end

recebe_proc_e_passa_parametro
recebe_proc_e_passa_parametro { print "dentro do bloco\n" } 