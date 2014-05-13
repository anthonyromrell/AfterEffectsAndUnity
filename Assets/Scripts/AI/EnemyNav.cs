using UnityEngine;
using System.Collections;

public class EnemyNav : MonoBehaviour {

	public Animator eAnim;//drop an Animator component here
	public NavMeshAgent myNMA; //accesses the navmesh component of an enemy
	[HideInInspector]//hides the public var just below from the Unity Editor
	public GameObject myTarget; // the location of the player the enemies case
	private float velocity;//the current velocity of the enemy in x
	
	void Start () {// Update is called once per frame
		myTarget = myNMA.gameObject;//Sets the target to itself
	}

	void OnEnable () {
		Start();//calls start() again when the AI is reactivated
	}

	void Update () {
		myNMA.destination = myTarget.transform.position; // set the destination of the enemy to follow the player
		velocity = myNMA.velocity.x;//gets the velocity of the current agent
		eAnim.SetFloat("Swim",velocity);//sets animation to swim or idle depending on the speed
	}
}
