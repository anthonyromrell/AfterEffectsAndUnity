// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnableRecycle : MonoBehaviour 
{
	public GameObject[] tileChildren;
	public delegate void EnableLevelConponentDel(Transform _t);
	public static event EnableLevelConponentDel EnableLevelEvent;
	public bool canRecycle = true;

	public virtual void RecycleTransform (bool _b)
	{
		if (EnableLevelEvent != null) {
			EnableLevelEvent (this.gameObject.transform);
			canRecycle = _b;
			ToggleChildrenOnOff(false);
		}
	}

	public void ToggleChildrenOnOff (bool _b) {
		foreach (GameObject _go in tileChildren) {
			_go.SetActive(_b);
		}
	}

	public void Start () {
		RecycleTransform (false);
	}

	void OnTriggerEnter2D (Collider2D _c) {
		if(!canRecycle) {
			RecycleTransform (true);
		}
	}
}
