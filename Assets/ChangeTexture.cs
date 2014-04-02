using UnityEngine;
using System.Collections;

public class ChangeTexture : MonoBehaviour {

	void Start () {
		Object[] sprt = Resources.LoadAll("SD", typeof(Sprite));
		SpriteRenderer _sprt = this.GetComponent<SpriteRenderer>();
		foreach (Sprite _s in sprt) {
//			Debug.Log(_s);
//			Debug.Log(_sprt.sprite);
			if(_sprt.sprite.name == _s.name) {
				_sprt.sprite = _s;
//				Debug.Log(_s);
			}
		}

		Object sp = Resources.Load<Sprite>("HD"+_sprt.name);

		Debug.Log(sp);
	}
}
