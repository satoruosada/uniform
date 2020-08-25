<?php
 
require_once(dirname(__FILE__) . '/../function.php');
 
class FunctionTest extends PHPUnit\Framework\TestCase {
    
    public function testValidNumberTrue() {
      validNumber('123', 'number');
      $results = getErrMsg('number');
      $this->assertNull($results);
    }

    public function testValidNumberFalse() {
      validNumber('１２３', 'number');
      $results = getErrMsg('number');
      $this->assertEquals(MSG17, $results);
    }

    public function testValidNumberFalse2() {
      validNumber('一二三', 'number');
      $results = getErrMsg('number');
      $this->assertEquals(MSG17, $results);
    }

    public function testValidNumberFalse3() {
      validNumber('!#$', 'number');
      $results = getErrMsg('number');
      $this->assertEquals(MSG17, $results);
    }

    public function testGetUserReturnsDbData() {
      $result = getUser(2);
      $this->assertTrue(count($result) > 0);
    }

    public function testGetUserReturnsFalse() {
      $result = getUser(0);
      $this->assertFalse($result);
    }
    
}

