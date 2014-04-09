using UnityEngine;
using System.Collections;

public class Sub : MonoBehaviour {

	void Start () {
		eve.myEve += listenMe;
		del.newEvent += listenMe;
	}

	int listenMe (int _i) {
		_i += 20;
		Debug.Log(_i);
		return _i;
	}

}
