using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class FlappyMoveAndLevelGenerate : MonoBehaviour {
	
	public Transform thisMover;
	public List<Transform> avaliableLevelObjects;
	public List<EnableRecycle> avaliableToRecycle;
	public float flappySpeed = 2.1f;
	public float distance;
	public float nextDistance;
	public float nextTime = -2;

	public virtual void Start () {
		avaliableLevelObjects = new List<Transform>();
		FlappyEndGame.TurnOffGame += TurnOff;
		EnableRecycle.EnableLevelEvent += AddToEnableList;
	}
	
	public virtual void OnDestroy () {
		FlappyEndGame.TurnOffGame -= TurnOff;
		EnableRecycle.EnableLevelEvent -= AddToEnableList;
	}

	public void AddToEnableList (Transform _t) {
		avaliableLevelObjects.Add(_t);
		avaliableToRecycle.Add(_t.GetComponent<EnableRecycle>());
	}

	public void TurnOff () {
		this.enabled = false;
	}

	void Update () {
		thisMover.Translate(Vector3.right * Time.deltaTime *flappySpeed);
		if(thisMover.position.x > nextDistance) {
			NextGenerate ();
			nextDistance = thisMover.position.x + distance;
		} 
	}

	public virtual void NextGenerate () {
		if(avaliableLevelObjects.Count > 0) {
			int randomLevelObjectNum = Random.Range(0, avaliableLevelObjects.Count-1);
			avaliableLevelObjects[randomLevelObjectNum].transform.position = new Vector2(nextDistance,0);
			avaliableToRecycle[randomLevelObjectNum].canRecycle = false;
			avaliableToRecycle[randomLevelObjectNum].ToggleChildrenOnOff(true);
			avaliableLevelObjects.RemoveAt(randomLevelObjectNum);
			avaliableToRecycle.RemoveAt(randomLevelObjectNum);
		}
	}
}
