% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	NC = 0;
	points = [];
	NC = textread(file_params);	
	load(file_points);
end

