frog_program, frop

	Hi there.

	A sample program demonstrating typical Evaluate Parameters
	usage.

	Examples:

	  sample
	  sample -usage_help
	  sample -h
	  sample -full_help
          sample -mui 1234
.number
	An integer.
.verbose
        A 'switch' type parameter emulates a typical standalone
        switch. If the switch is specified Evaluate Parameters
        returns a '1'.
.command
        A 'string' type parameter is just a list of characters,
        which must be quoted if it contains whitespace. 
        NOTE:  for this parameter you can also create and
        initialize the environment variable D_SAMPLE_COMMAND to
        override the standard default value for this command
        line parameter.  All types except 'switch' may have a
        default environment variable for easy user customization.
.scale_factor
        A 'real' type parameter must be a real number that may
        contain a leading sign, a decimal point and an exponent.
.millisecond_update_interval
        An 'integer' type parameter must consist of all digits
        with an optional leading sign.  NOTE: this parameter's
        default value is '$required', meaning that
        Evaluate Parameters ensures that this parameter is
        specified and given a valid value.  All types except
        'switch' may have a default value of '$required'.
.ignore_output_file_column_one
        A 'boolean' type parameter may be TRUE/YES/ON/1 or
        FALSE/NO/OFF/0, either upper or lower case.  If TRUE,
        Evaluate Parameters returns a value of '1', else '0'.
.output
        A 'file' type parameter expects a filename.  For Unix
        $HOME and ~ are expanded.  For evap/Perl 'stdin' and
	'stdout' are converted to '-' and '>-' so they can be
	used in a Perl 'open' function.
.queue
        A 'key' type parameter enumerates valid values.  Only the
        specified keywords can be entered on the command line.
.destination
	An 'application' type parameter is not type-checked in
	any - the treatment of this type of parameter is
	application specific.  NOTE:  this parameter' default
	value is enclosed in grave accents (or "backticks").
	Evaluate Parameters executes the command and uses it's
	standard output as the default value for the parameter.
.tty
	A 'name' type parameter is similar to a string except
	that embedded white-space is not allowed.  NOTE: this
	parameter is also a LIST, meaning that it can be
	specified multiple times and that each value is pushed
        onto a Perl LIST variable.  In general you should quote
        all list elements.  All types except 'switch' may be
	'list of'.
