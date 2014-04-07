using UnityEngine;
using System.Collections;

public class RunStateMachine : MonoBehaviour {

	public string myParameter;
	public bool myBool;
	public Animator myAnim;

	void OnMouseDown () {
		myAnim.SetBool(myParameter, myBool);
	}
}
