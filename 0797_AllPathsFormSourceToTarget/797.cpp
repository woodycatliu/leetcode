#include <iostream>
#include <vector>

using namespace std;

class Solution {

    typedef vector<vector<int>> Graph;
    int endPoint;

public:
    vector<vector<int>> allPathsSourceTarget(vector<vector<int>>& graph) {
        endPoint = graph.size() - 1;
        Graph res;
        vector<int> path;
        dfs(graph, 0, path, res);
        return res;
    }

    void dfs(Graph& graph, int point, vector<int>& path, Graph& res) {
        path.emplace_back(point);

        if (point == endPoint) {
            res.emplace_back(path);
        } else {
            for (int p: graph[point]) {
                dfs(graph, p, path, res);
            }
        }

        path.pop_back();
    }
};

int main() {
    Solution s = Solution();
    vector<vector<int>> q = { {1,2},{3},{3},{} };
    auto res = s.allPathsSourceTarget(q)
    return 0;
}