using UnityEngine;
using System.Collections;

public class SendPowerDelegate : MonoBehaviour {

	public delegate void SendPower (); //A delegate is a reference type that can be used to encapsulate (enclose) a method function, Delegates are used to pass methods (functions) as arguments to other methods (functions) 
	public static event SendPower SendPowerEvent; //Events enable a class or object to notify other classes or objects when something occurs. Events call delegates

	void OnTriggerEnter () { // runs when game objects enter a collider used as a trigger
		SendPowerFunction(); // runs a custom function
	}
	
	public void SendPowerFunction() {
		if(SendPowerEvent != null) { // checks to see if there are any subscribers to the event (subcribers are added using the += operator in another script)
			SendPowerEvent(); // runs the event related to the delegate
		}
	}
}
