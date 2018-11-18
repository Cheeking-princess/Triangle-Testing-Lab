/**
 * Created by Denis on 18.11.2018.
 */
@isTest
private with sharing class TriangleTest {
    @isTest
    private static void firstSideNullTest() {
        Test.startTest();
            Boolean returnValue = Triangle.SidesOfTriangle(NULL, 5, 6);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void secondSideNullTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(4, NULL, 6);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void thirdSideNullTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(4, 5, NULL);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void firstSideLessThanZeroTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(-1, 5, 6);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void secondSideLessThanZeroTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(4, -2, 6);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void thirdSideLessThanZeroTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(4, 5, -3);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void firstSideMoreThanOthersTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(100, 5, 6);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void secondSideMoreThanOthersTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(4, 200, 6);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void thirdSideMoreThanOthersTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(4, 5, 300);
        Test.stopTest();
        System.assertEquals(false, returnValue);
    }

    @isTest
    private static void validDataTest() {
        Test.startTest();
        Boolean returnValue = Triangle.SidesOfTriangle(4, 5, 3);
        Test.stopTest();
        System.assertEquals(true, returnValue);
    }




}