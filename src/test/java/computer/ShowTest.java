package computer;

import java.io.IOException;

import org.junit.Test;

import com.jcraft.jsch.JSchException;

import computer.util.ShowUtil;


public class ShowTest {
	@Test
	public void get() throws JSchException, IOException {
//		System.out.println(ShowUtil.getCPUData());
//		System.out.println(ShowUtil.getMemoryData());
//		System.out.println(ShowUtil.getNetworkData());
		System.out.println(ShowUtil.getHDFSIndex());
//		System.out.println(ShowUtil.test());
	}
}
