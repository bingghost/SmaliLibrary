package org.bing.smalilibrary;

import com.android.smalilib.LogUtil;

import android.app.Activity;
import android.os.Bundle;
import android.os.Debug;

public class MainActivity extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Debug.waitForDebugger();
		
		Debug.startMethodTracing();
		
		// 打印堆栈
		Thread.dumpStack();
		
		// 打印日志
		LogUtil.d("Hello");
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		
		Debug.stopMethodTracing();
	}
	

}
