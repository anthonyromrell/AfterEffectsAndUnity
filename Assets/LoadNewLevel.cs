// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LoadNewLevel : MonoBehaviour 
{

	void OnTriggerEnter2D () {
		Application.LoadLevel("TurtleStates");
	}

	void OnMouseDown () {
		Application.LoadLevel("TurtleStates");
	}


}
