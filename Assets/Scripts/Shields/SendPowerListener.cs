using UnityEngine;
using System.Collections;

public class SendPowerListener : MonoBehaviour {
	
	void OnEnable () {//Called when script is activated
		SendPowerDelegate.SendPowerEvent += PowerDown; // += is subscribing the PowerDown Function the the Event. += means add to, just like adding to.
	}
	
	void OnDisable () {//Called when script is deactivated
		SendPowerDelegate.SendPowerEvent -= PowerDown; // += is unsubscribing the PowerDown Function the the Event. -= means subtract from, just like adding to.
	}
	
	void PowerDown () {// Custom function 
		this.gameObject.SetActive(false); //deactivates the gameObject	
	}
	
}
