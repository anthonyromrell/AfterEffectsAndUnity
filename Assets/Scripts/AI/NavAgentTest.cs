using UnityEngine;
using System.Collections;

public class NavAgentTest : MonoBehaviour {

	public NavMeshAgent myNMA;
	private GameObject myDestination;
	// Use this for initialization
	void Start () {
		myDestination = myNMA.gameObject;
	}

	void OnTriggerEnter (Collider _c) {
		myDestination = _c.gameObject;
		//myNMA.gameObject.SetActive(true);
	}

	// Update is called once per frame
	void Update () {
		myNMA.destination = myDestination.transform.position;
	}

	void OnMouseUp ( ) {
		Object.Destroy(this.gameObject);
	}
}
