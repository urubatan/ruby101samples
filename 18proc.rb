def recebe_proc(&block)
	if block
		block.call
	end
end

recebe_proc

recebe_proc { print "este bloco vai se tornar uma proc pois vai ser atribuído a uma variável no método" }