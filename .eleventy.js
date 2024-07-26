module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy('vault/blog');
  return {
    pathPrefix: '/sinh-x-blog/',
    dir: {
      input: 'vault',
      output: '_site',
    },
  };
};
