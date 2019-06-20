package com.ssm.navi;

import org.junit.Assert;
import org.junit.Test;

public class StudyTest {
	
	public int add(int a, int b) {
		return a+b;
	}
	
	public int subtract(int a, int b) {
		return a-b;
	}

	@Test
	public void testAdd() {
		Assert.assertEquals(2, add(1,2));
	}

}
