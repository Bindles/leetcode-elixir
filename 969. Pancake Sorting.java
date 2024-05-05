// 969. Pancake Sorting
class Solution {
    private void reverse (int[] arr , int k)
    {
        for(int i=0;i<=k/2;i++)
        {
            int temp=arr[i];
            arr[i]=arr[k-i];
            arr[k-i]=temp;
        }
    }
    public List<Integer> pancakeSort(int[] arr) {
        ArrayList<Integer> a=new ArrayList<>();
        for(int i=arr.length-1;i>0;i--)
        {
            for(int j=1;j<=i;j++)
            {
                if(arr[j]==i+1)
                {
                    reverse(arr , j);
                    a.add(j+1);
                    break;
                }
            }
            reverse(arr ,i);
            a.add(i+1);

        }
        return a;
    }
}