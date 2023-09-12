# Line Ending differences
	- Linux: Uses '\n' exclusively
	- Windows: Uses '\r\n'
On windows, '\r' indicates moving the cursor to the start of the line,
and '\n' indicates moving the cursor down by one line (whilst keeping
its col position)

On Linux, '\n' will do both at the same time, but `\r` will still return
to the start of the line

