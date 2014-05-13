using UnityEngine;
using System.Collections;

public class NavSimpleAI : MonoBehaviour {

	public NavMeshAgent myNMA;
	public Transform myTarget;
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		myNMA.destination = myTarget.position;
	}
}
