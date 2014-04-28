// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LerpToMove : MonoBehaviour 
{

	public Transform myObj;
	
	private Vector3 scanPos;
	private Vector3 screenPoint;
	private Vector3 newPosition;
	public float speed = 5;

	void Start () {
		newPosition = myObj.position;
	}
	
	void OnMouseUp () {
		screenPoint = Camera.main.WorldToScreenPoint(scanPos);
		Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z);
		newPosition = Camera.main.ScreenToWorldPoint(curScreenPoint); //+ offset;
	}
	
	void Update() {
		myObj.position = Vector3.MoveTowards(myObj.position, newPosition, Time.deltaTime*speed);
	}
}
