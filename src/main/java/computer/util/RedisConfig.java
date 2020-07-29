package computer.util;

import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.ObjectMapper;
/**
 * 
 * @author dali
 * @date 2020-7-27
 * @Description redis配置类
 * 				当添加Redis依赖后，SpringBoot会自动帮我们在容器中生成一个RedisTemplate和一个StringRedisTemplate
 * 				但是，这个RedisTemplate的泛型是<Object,Object>，在代码中会不可避免的需要类型转换，这样不够安全，也过于麻烦
 * 				而且RedisTemplate没有设置序列化方式，所以，需要配置Redis
 * 				一句话：防止乱码
 *
 */
@Configuration
public class RedisConfig extends CachingConfigurerSupport{
	@Bean
	@SuppressWarnings("all")
	public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory factory) {
		RedisTemplate<String, Object> template = new RedisTemplate<String, Object>();
		template.setConnectionFactory(factory);
		Jackson2JsonRedisSerializer jackson2JsonRedisSerializer = new Jackson2JsonRedisSerializer(Object.class);
		ObjectMapper om = new ObjectMapper();
		om.setVisibility(PropertyAccessor.ALL, JsonAutoDetect.Visibility.ANY);
		om.enableDefaultTyping(ObjectMapper.DefaultTyping.NON_FINAL);
		jackson2JsonRedisSerializer.setObjectMapper(om);
		StringRedisSerializer stringRedisSerializer = new StringRedisSerializer();
		//key采用String的序列化方式
		template.setKeySerializer(stringRedisSerializer);
		//hash的key也采用String的序列化方式
		template.setHashKeySerializer(stringRedisSerializer);
		//value序列化方式采用jackson
		template.setValueSerializer(jackson2JsonRedisSerializer);
		//hash的value序列化方式采用jackson
		template.setHashValueSerializer(jackson2JsonRedisSerializer);
		template.afterPropertiesSet();
		return template;
	}
}
