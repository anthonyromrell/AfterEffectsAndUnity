// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LerpToMove : MonoBehaviour 
{

	public Transform myObj;
	
	private Vector3 scanPos;
	private Vector3 screenPoint;
	private Vector3 offset;
	public Vector3 curPosition;
	private Vector3 oldPosition;

	void Start () {
		oldPosition = myObj.position;
		curPosition = myObj.position;
	}


	void OnMouseUp () {

		oldPosition = myObj.position;

		screenPoint = Camera.main.WorldToScreenPoint(scanPos);
		
		Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z);
		
		curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint); //+ offset;
		
		//myObj.position = curPosition;
		
		//rigidbody.MovePosition(curPosition);
		
	}
	
	void Update() {
		myObj.position = Vector3.Lerp(oldPosition, curPosition, 2);
	}
}
