using UnityEngine;
using System.Collections;

public class NavAgent : MonoBehaviour {

	public NavMeshAgent myNMA;
	[HideInInspector]
	public Transform myDestination;
	// Use this for initialization
	void Start () {
		myDestination = myNMA.gameObject.transform;
	}
	
	void OnTriggerEnter (Collider _c) {
		myDestination = _c.gameObject.transform;
	}
	
	// Update is called once per frame
	void Update () {
		myNMA.destination = myDestination.position;
	}
}
