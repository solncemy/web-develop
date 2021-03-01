PROGRAM HelloPerson(INPUT, OUTPUT);
USES
  dos;
VAR
  Start: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Start := POS('name=', GetEnv('QUERY_STRING'));
  IF Start > 0
  THEN
    WRITELN('Hello dear, ', COPY(GetEnv('QUERY_STRING'), Start + 5, Length(GetEnv('QUERY_STRING')) - 5))
  ELSE
    WRITELN('Hello Anonymous')
END.
