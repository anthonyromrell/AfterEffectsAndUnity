// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ClickToMoveObj : MonoBehaviour 
{
	public Transform myObj;

	private Vector3 scanPos;
	private Vector3 screenPoint;
	private Vector3 offset;

	void OnMouseUp () {

		screenPoint = Camera.main.WorldToScreenPoint(scanPos);

		Vector3 curScreenPoint = new Vector3(Input.mousePosition.x, Input.mousePosition.y, screenPoint.z);
		
		Vector3 curPosition = Camera.main.ScreenToWorldPoint(curScreenPoint); //+ offset;

		myObj.position = curPosition;

		//rigidbody.MovePosition(curPosition);

	}
}
