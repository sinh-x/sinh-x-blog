module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy('vault/blog');
  return {
    dir: {
      input: 'vault',
      output: '_site',
    },
  };
};
