// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MoveObject : MonoBehaviour 
{

	private Vector3 scanPos;
	private Vector3 screenPoint;
	private Vector3 offset;

	void OnMouseDown()
	{
		rigidbody.useGravity = false;
		//rigidbody.isKinematic = true;
		screenPoint = Camera.main.WorldToScreenPoint(scanPos);
		
		offset = scanPos - Camera.main.ScreenToWorldPoint(
			new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z));
	}
	
	void OnMouseUp () {
		rigidbody.useGravity = true;
		//rigidbody.isKinematic = false;
	}


	void OnMouseDrag()
	{
		Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z);
		
		Vector3 curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint); //+ offset;
		//transform.position = curPosition;

		rigidbody.MovePosition(curPosition);

	}
	
}
