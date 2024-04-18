/*using UnityEngine;
using UnityEngine.AI;

public class BakeNavMesh : MonoBehaviour
{
    public GameObject[] navMeshObjects; // Array of objects to include in the NavMesh bake

    void Start()
    {
        // Call the function to bake the NavMesh
        BakeNavMesh2();
    }

    void BakeNavMesh2()
    {
        // Create a NavMeshBuildSettings object with your desired settings
        NavMeshBuildSettings buildSettings = NavMesh.GetSettingsByIndex(0); // You can adjust the settings index as needed

        // Create a NavMeshBuildSettings object with your desired settings
        NavMeshBuildSettings buildSettings = NavMesh.GetSettingsByIndex(0); // You can adjust the settings index as needed

        // Create a NavMeshData object to hold the baked NavMesh data
        NavMeshData navMeshData = new NavMeshData();

        // Create a NavMeshBuildSource object for each object you want to include in the bake
        NavMeshBuildSource[] buildSources = new NavMeshBuildSource[navMeshObjects.Length];
        for (int i = 0; i < navMeshObjects.Length; i++)
        {
            buildSources[i] = new NavMeshBuildSource
            {
                shape = NavMeshBuildSourceShape.Mesh,
                transform = navMeshObjects[i].transform.localToWorldMatrix,
                size = Vector3.one,
                area = buildSettings.areaMask
            };
        }

        // Build the NavMesh
        NavMeshBuilder.BuildNavMeshData(buildSettings, buildSources, new Bounds(Vector3.zero, Vector3.one * 100), Vector3.zero, Quaternion.identity, out navMeshData);

        // Assign the baked NavMesh data to the NavMesh
        NavMesh.AddNavMeshData(navMeshData);

        // Check for any errors or warnings
        if (NavMeshBuilder.BuildNavMeshData(buildSettings, buildSources, new Bounds(Vector3.zero, Vector3.one * 100), Vector3.zero, Quaternion.identity, out navMeshData))
        {
            Debug.Log("NavMesh bake successful.");
        }
        else
        {
            Debug.LogError("NavMesh bake failed.");
        }
    }
}*/