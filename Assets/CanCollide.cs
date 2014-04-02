using UnityEngine;
using System.Collections;

public class CanCollide : MonoBehaviour {

	public Rigidbody2D _r;

	void OnCollisionEnter2D () {
		_r.isKinematic = false;
	}

}
