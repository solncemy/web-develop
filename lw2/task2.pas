PROGRAM SarahRevere(INPUT, OUTPUT);
USES
  dos;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  IF GetEnv('QUERY_STRING') = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land')
  ELSE
    IF GetEnv('QUERY_STRING') = 'lanterns=2'
    THEN
      WRITELN('The British are coming by sea')
    ELSE
      IF GetEnv('QUERY_STRING') = 'lanterns=3' 
      THEN
        WRITELN('The British are coming by air') 
      ELSE
        WRITELN('Sarah did not say')
END.
