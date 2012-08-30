val show_mouseButton = mkShow (fn b => case b of
                                           Left => "Left"
                                         | Middle => "Middle"
                                         | Right => "Right")

fun main () =
    msg <- source <xml/>;
		  mousedown <- source None;
    let fun onload () =
	    onMousedown(fn args => set mousedown (Some args.Button));
	    onMouseup(fn _ => set mousedown None)
    in
	return <xml>
	  <head>
	    <title>Hello world!</title>
	  </head>
	  <body onload={onload ()}>
	    <h1>Hello world!</h1>
	    <div style="width:200px; height:200px; position:relative; border:thick black solid"
			   onmousemove={fn args =>
					   md <- get mousedown;
						  set msg <xml>
						    ScreenX: {[args.ScreenX]}
						    ScreenY: {[args.ScreenY]}
						    ClientX: {[args.ClientX]}
						    ClientY: {[args.ClientY]}
						    Button: {[args.Button]}
						    Mousedown: {[md]}
						  </xml>}>
Drag Me! <dyn signal={signal msg}/>
	    </div>
	  </body>
	</xml>
    end
