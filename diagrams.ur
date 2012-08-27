val show_mouseButton = mkShow (fn b => case b of
                                           Left => "Left"
                                         | Middle => "Middle"
                                         | Right => "Right")
		       
fun main () =
(*    mousedown <- source False;*)
    msg <- source <xml/>;
    return <xml>
      <head>
	<title>Hello world!</title>
      </head>
      
      <body (*onmousedown={fn _ => set mousedown True} onmouseup={fn _ => set mousedown False}*)>
	<h1>Hello world!</h1>
	<div style="width:200px; height:200px; position:relative; border:thick black solid" onmousemove={fn args => (* md <- signal mousedown; *) set msg <xml>
	  ScreenX: {[args.ScreenX]}
	  ScreenY: {[args.ScreenY]}
	  ClientX: {[args.ClientX]}
	  ClientY: {[args.ClientY]}
	  Button: {[args.Button]}
(*	  Mousedown: {[if md then 1 else 0]}*)
	</xml>}>
Drag Me! <dyn signal={signal msg}/>
	</div>
      </body>
    </xml>
