fun main () =
    msg <- source <xml/>;
    return <xml>
      <head>
	<title>Hello world!</title>
      </head>
      
      <body>
	<h1>Hello world!</h1>
	<div style="width:200px; height:200px; position:relative; border:thick black solid" onmousedown={fn args => set msg <xml>
	  ScreenX: {[args.ScreenX]}
	  ScreenY: {[args.ScreenY]}
	  ClientX: {[args.ClientX]}
	  ClientY: {[args.ClientY]}
	</xml>}>
	  Drag Me! <dyn signal={signal msg}/>
	</div>
      </body>
    </xml>
