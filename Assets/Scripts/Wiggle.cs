using UnityEngine;
using System.Collections;

public class Wiggle : MonoBehaviour {


	public float amount = 0.5f;
	
	// Update is called once per frame
	void Update () {
		Vector3 _v = new Vector3(0,0,0);
		_v.x = Random.Range(-amount, amount);
		_v.y = Random.Range(-amount, amount);
		_v.z = Random.Range(-amount, amount);
		transform.position = _v;
	}
}
