/**
 * Created by Denis on 18.11.2018.
 */

public with sharing class Triangle {
    public static Boolean SidesOfTriangle(Integer sideOne, Integer sideTwo, Integer sideTree) {
        List <Integer> sides =  new List<Integer>();
        sides.add(sideOne);
        sides.add(sideTwo);
        sides.add(sideTree);
        Integer sumSades = sideOne + sideTwo + sideTree;
        for (Integer side: sides) {
            if (side <= 0  || side == NULL || side >= (sumSades - side)) {
                return false;
            }
        }
        return true;
    }
}