// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AddForceToObject : MonoBehaviour 
{

	public Rigidbody2D myRigidBody;
	public float myForce = 30;

	void Update () 
	{
		Vector2 _v = new Vector2(this.transform.position.x + myForce, this.transform.position.y);
		if(Input.GetKey(KeyCode.A))
		   myRigidBody.AddForce(_v);
	}
}
