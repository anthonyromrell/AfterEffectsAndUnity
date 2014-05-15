// Anthony Romrell ©2014

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class NewScript : MonoBehaviour 
{

	public string myString;
	public string[] strings;
	public List<string> newStrings;

	void Start () {
		newStrings = new List<string>();
		newStrings.Add("Dog");
		newStrings.Add("Cat");
		newStrings.Add("Cow");
		newStrings.Add("Bird");
		newStrings.Add("Dog");
	}
}
