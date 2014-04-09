using UnityEngine;
using System.Collections;

public class BuiltInFunctions : MonoBehaviour {

	// Use this for initialization
	void Start () {
		Debug.Log("Runs once");
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log("Runs every frame, at the end of the frame");
	}

	void FixedUpdate () {
		Debug.Log("Runs every frame, at the start of the frame");
	}

	void OnMouseOver () {
		Debug.Log("Runs on a mouse over");
	}

	void OnDisable () {
		Debug.Log("Runs when disabled");
	}

	void OnEnable () {
		Debug.Log("Runs when enabled");
	}
}
